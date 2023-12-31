.class Lcom/xiaomi/dist/handoff/system/HandoffUtil;
.super Ljava/lang/Object;
.source "HandoffUtil.java"


# direct methods
.method static getValidServicePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "com.milink.service"

    const-string v1, ""

    const-string v2, "HandoffUtil"

    .line 92
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x4

    .line 95
    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    .line 100
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_0

    goto :goto_2

    .line 104
    :cond_0
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    if-eqz v6, :cond_2

    .line 105
    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v8, "com.xiaomi.dist.handoff.SysHandoffControlService"

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 112
    invoke-static {p0, v6}, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->isPrivilegedPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "service not found"

    .line 116
    invoke-static {v2, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    :goto_2
    const-string p0, "getPackageInfo error, cannot find service"

    .line 101
    invoke-static {v2, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p0

    const-string v0, "getPackageInfo error, e=%s"

    .line 97
    invoke-static {v2, v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static isSupported(Landroid/content/Context;)Z
    .locals 2

    .line 142
    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/HandoffUtil;->getValidServicePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HandoffUtil"

    invoke-static {v1, v0}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method static useMiuiRelay(ZZLandroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "HandoffUtil"

    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 53
    :try_start_0
    invoke-virtual {v1, p3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    const-string v5, "useMiuiRelay, package version=%s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 55
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v7, v4

    invoke-static {v0, v5, v7}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 63
    invoke-static {p2}, Lcom/xiaomi/dist/handoff/system/HandoffUtil;->isSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    :try_start_1
    new-instance p0, Landroid/content/ComponentName;

    const-string p1, "com.xiaomi.dist.handoff.sdk.HandoffClientService"

    invoke-direct {p0, p3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 73
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string p1, "com.xiaomi.dist.handoff.metadata.SDK_VERSION"

    .line 74
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    move p0, v4

    goto :goto_1

    .line 79
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    new-array p1, v6, [Ljava/lang/Object;

    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "useMiuiRelay, handoffVersion=%s"

    invoke-static {v0, p2, p1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, 0xe4e1c0

    if-ge p0, p1, :cond_3

    move v4, v6

    :cond_3
    return v4

    :catchall_0
    move-exception p0

    const-string p1, "useMiuiRelay, handoffVersion parse error"

    .line 83
    invoke-static {v0, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v6

    :cond_4
    :goto_2
    const-string p0, "useMiuiRelay, not support handoff"

    .line 64
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :catchall_1
    move-exception p0

    const-string p1, "useMiuiRelay, package not install"

    .line 57
    invoke-static {v0, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    invoke-static {}, Lcom/xiaomi/dist/handoff/system/SystemPropertyUtil;->isTablet()Z

    move-result p0

    return p0
.end method
