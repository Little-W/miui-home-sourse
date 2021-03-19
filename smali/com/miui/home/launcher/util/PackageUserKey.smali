.class public Lcom/miui/home/launcher/util/PackageUserKey;
.super Ljava/lang/Object;
.source "PackageUserKey.java"


# instance fields
.field private mHashCode:I

.field public mPackageName:Ljava/lang/String;

.field public mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method private update(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 21
    iput-object p1, p0, Lcom/miui/home/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/miui/home/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/util/PackageUserKey;->mHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 33
    instance-of v0, p1, Lcom/miui/home/launcher/util/PackageUserKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 34
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/util/PackageUserKey;

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/home/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/miui/home/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/miui/home/launcher/util/PackageUserKey;->mHashCode:I

    return v0
.end method
