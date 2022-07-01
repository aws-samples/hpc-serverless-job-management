#!/bin/bash

cat << 'EOF' > /etc/systemd/system/slurmrestd.service
[Unit]
Description=Slurm REST daemon
After=network.target munge.service slurmctld.service
ConditionPathExists=/opt/slurm/etc/slurm.conf

[Service]
Type=simple
EnvironmentFile=-/etc/sysconfig/slurmrestd
Environment="SLURM_JWT=daemon"
ExecStart=/opt/slurm/sbin/slurmrestd -f /opt/slurm/etc/slurm.conf -a rest_auth/jwt -s openapi/v0.0.37 0.0.0.0:6830
ExecReload=/bin/kill -HUP $MAINPID
User=munge
Group=munge

[Install]
WantedBy=multi-user.target
EOF

echo "AuthAltTypes=auth/jwt" >> /opt/slurm/etc/slurm.conf

systemctl daemon-reload
systemctl enable slurmrestd
dd if=/dev/random of=/var/spool/slurm.state/jwt_hs256.key bs=32 count=1
chown slurm:slurm /var/spool/slurm.state/jwt_hs256.key
chmod 0600 /var/spool/slurm.state/jwt_hs256.key
systemctl restart slurmctld
systemctl start slurmrestd
