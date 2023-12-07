.class public Lcom/xiaomi/dist/utils/PrivilegedPackageManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT:Lcom/xiaomi/dist/utils/PrivilegedPackageManager;

.field private static final INTERNAL_SIGNATURES:[Ljava/lang/String;


# instance fields
.field private final mGrantedApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfSignature:Ljava/lang/String;

.field private final mWhiteList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;

    invoke-direct {v0}, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->DEFAULT:Lcom/xiaomi/dist/utils/PrivilegedPackageManager;

    const-string v0, "7B6DC7079C34739CE81159719FB5EB61D2A03225"

    const-string v1, "B3D1CE9C2C6403E9685324BCD57F677B13A53174"

    const-string v2, "E22CDA406937EAC46BDE7AA2F2092DAACC9EFFF6"

    const-string v3, "0832F8EB8BB228121A6EA90CADD89D582CB19C7D"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    sput-object v0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->INTERNAL_SIGNATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->mGrantedApps:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->mWhiteList:Ljava/util/Map;

    return-void
.end method

.method private checkPackagePermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const-string v2, "PrivilegedPackage"

    if-eqz v0, :cond_0

    const-string p0, "Privileged -- for debug"

    invoke-static {v2, p0}, Lcom/xiaomi/dist/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_1

    const-string p0, "Privileged type: system"

    invoke-static {v2, p0}, Lcom/xiaomi/dist/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    invoke-static {p1, p2}, Lcom/xiaomi/dist/utils/SignatureUtils;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    aput-object p2, p0, v0

    const-string p1, "rejected access for %s, because not found signature."

    invoke-static {v2, p1, p0}, Lcom/xiaomi/dist/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->getSelfSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "Privileged type: same signature"

    invoke-static {v2, p0}, Lcom/xiaomi/dist/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    sget-object p1, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->INTERNAL_SIGNATURES:[Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_4

    const-string p0, "Privileged type: internal"

    invoke-static {v2, p0}, Lcom/xiaomi/dist/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    iget-object p0, p0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->mWhiteList:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Privileged type: white list"

    invoke-static {v2, p0}, Lcom/xiaomi/dist/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    new-array p0, v1, [Ljava/lang/Object;

    aput-object p2, p0, v0

    const-string p1, "Not a valid package : %s"

    invoke-static {v2, p1, p0}, Lcom/xiaomi/dist/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :catch_0
    const-string p0, "Check calling package, but not exist this app."

    invoke-static {v2, p0}, Lcom/xiaomi/dist/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getSelfSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->mSelfSignature:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/dist/utils/SignatureUtils;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->mSelfSignature:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->mSelfSignature:Ljava/lang/String;

    return-object p0
.end method

.method private static getUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2
.end method

.method public static isPrivilegedPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->DEFAULT:Lcom/xiaomi/dist/utils/PrivilegedPackageManager;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->packageCheckInner(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected onFilterPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method packageCheckInner(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1, p2}, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->getUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v3, p0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->mGrantedApps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->checkPackagePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->onFilterPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/xiaomi/dist/utils/PrivilegedPackageManager;->mGrantedApps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
