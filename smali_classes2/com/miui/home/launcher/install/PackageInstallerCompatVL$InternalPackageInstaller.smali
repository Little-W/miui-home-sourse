.class Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/PackageInstallerCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPackageInstaller"
.end annotation


# instance fields
.field private mActiveSessionsWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompatVLWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/install/PackageInstallerCompatVL;",
            ">;"
        }
    .end annotation
.end field

.field private mInstallerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/pm/PackageInstaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInstaller;Ljava/util/HashSet;Lcom/miui/home/launcher/install/PackageInstallerCompatVL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInstaller;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/home/launcher/install/PackageInstallerCompatVL;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mInstallerWeakReference:Ljava/lang/ref/WeakReference;

    .line 107
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mActiveSessionsWeakReference:Ljava/lang/ref/WeakReference;

    .line 108
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mCompatVLWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private sendUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mCompatVLWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mCompatVLWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->access$000(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mInstallerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mInstallerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 141
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mActiveSessionsWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f11047a

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v1, v0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->sendUpdate(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->update(I)V

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->update(I)V

    return-void
.end method

.method public onCreated(I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->update(I)V

    return-void
.end method

.method public onFinished(IZ)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->update(I)V

    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->update(I)V

    return-void
.end method
