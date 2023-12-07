.class public Lcom/mi/preinstall/PAIPackageAddRemoveTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mIsAddPkg:Z

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mIsAddPkg:Z

    iput-object p1, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mPkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PAIAppAddRemove"

    if-eqz v0, :cond_0

    const-string p0, "package name is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mIsAddPkg:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mPkgName:Ljava/lang/String;

    invoke-static {p0}, Lcom/mi/preinstall/AutoInstallParserHelp;->writePreinstallPAIPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mPkgName:Ljava/lang/String;

    invoke-static {p0}, Lcom/mi/preinstall/AutoInstallParserHelp;->removeFromPreinstallPAIList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "run: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
