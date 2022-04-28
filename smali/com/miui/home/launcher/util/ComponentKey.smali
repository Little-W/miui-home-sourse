.class public Lcom/miui/home/launcher/util/ComponentKey;
.super Ljava/lang/Object;
.source "ComponentKey.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field private final mHashCode:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 40
    iput-object p2, p0, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/util/ComponentKey;->mHashCode:I

    return-void
.end method

.method public static from(Landroid/content/pm/LauncherActivityInfo;)Lcom/miui/home/launcher/util/ComponentKey;
    .locals 2

    .line 68
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 78
    check-cast p1, Lcom/miui/home/launcher/util/ComponentKey;

    .line 79
    iget-object v0, p1, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/miui/home/launcher/util/ComponentKey;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
