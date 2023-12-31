.class public final Lcom/miui/home/launcher/progress/ProgressUpdateParams;
.super Ljava/lang/Object;
.source "ProgressUpdateParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;


# instance fields
.field private experimentParams:Ljava/lang/String;

.field private iconUri:Landroid/net/Uri;

.field private isFromIntentSource:Z

.field private operationIconInfo:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private status:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->Companion:Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->server:Ljava/lang/String;

    const/16 v0, -0x3e8

    .line 12
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->status:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>()V

    const-string v0, "com.miui.home.extra.server_name"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ""

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->server:Ljava/lang/String;

    const-string v0, "android.intent.extra.update_progress_key"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->packageName:Ljava/lang/String;

    .line 29
    iget v0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->status:I

    const-string v1, "android.intent.extra.update_progress_status"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->status:I

    .line 31
    sget-object v0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->Companion:Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;

    const-string v1, "android.intent.extra.update_application_progress_icon_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;->access$parseUri(Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->iconUri:Landroid/net/Uri;

    const-string v0, "miui.intent.extra.update_progress_experiment_params"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->experimentParams:Ljava/lang/String;

    const-string v0, "miui.intent.extra.update_progress_operate_icon_params"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->operationIconInfo:Ljava/lang/String;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->isFromIntentSource:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "server"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->packageName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->server:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->status:I

    return-void
.end method

.method public static final createFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/progress/ProgressUpdateParams;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->Companion:Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;->createFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getExperimentParams()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->experimentParams:Ljava/lang/String;

    return-object p0
.end method

.method public final getIconUri()Landroid/net/Uri;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->iconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getOperationIconInfo()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->operationIconInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getServer()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->server:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    .line 12
    iget p0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->status:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final isFromIntentSource()Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->isFromIntentSource:Z

    return p0
.end method

.method public final setExperimentParams(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->experimentParams:Ljava/lang/String;

    return-void
.end method

.method public final setFromIntentSource(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->isFromIntentSource:Z

    return-void
.end method

.method public final setIconUri(Landroid/net/Uri;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->iconUri:Landroid/net/Uri;

    return-void
.end method

.method public final setOperationIconInfo(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->operationIconInfo:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->title:Ljava/lang/String;

    return-void
.end method
