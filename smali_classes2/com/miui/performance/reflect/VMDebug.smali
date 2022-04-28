.class public Lcom/miui/performance/reflect/VMDebug;
.super Ljava/lang/Object;
.source "VMDebug.java"


# direct methods
.method public static countInstancesOfClass(Ljava/lang/Class;)J
    .locals 2

    const/4 v0, 0x1

    .line 21
    invoke-static {p0, v0}, Lcom/miui/performance/reflect/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static countInstancesOfClass(Ljava/lang/Class;Z)J
    .locals 7

    :try_start_0
    const-string v0, "dalvik.system.VMDebug"

    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "countInstancesOfClass"

    const/4 v2, 0x2

    .line 27
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static countInstancesOfClass(Ljava/lang/String;)J
    .locals 2

    .line 12
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/miui/performance/reflect/VMDebug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getInstancesOfClasses([Ljava/lang/Class;Z)[[Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "dalvik.system.VMDebug"

    .line 48
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstancesOfClasses"

    const/4 v3, 0x2

    .line 49
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 54
    :catch_0
    filled-new-array {v0, v0}, [I

    move-result-object p0

    const-class p1, Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/Object;

    return-object p0
.end method
