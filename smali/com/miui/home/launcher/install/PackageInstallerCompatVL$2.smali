.class Lcom/miui/home/launcher/install/PackageInstallerCompatVL$2;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/PackageInstallerCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$2;->this$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method private update(I)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$2;->this$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    invoke-static {v0}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->access$100(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;)Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$2;->this$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    invoke-static {v0}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->access$200(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100352

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$2;->this$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result p1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr p1, v3

    float-to-int p1, p1

    invoke-static {v1, v2, v0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->access$300(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$2;->update(I)V

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$2;->update(I)V

    return-void
.end method

.method public onCreated(I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$2;->update(I)V

    return-void
.end method

.method public onFinished(IZ)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$2;->update(I)V

    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$2;->update(I)V

    return-void
.end method
