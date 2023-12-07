.class public final Lcom/miui/maml/widget/edit/MamlDownloadStatusKt;
.super Ljava/lang/Object;
.source "MamlDownloadStatus.kt"


# static fields
.field public static final CODE_EXIST:I = 0x1

.field public static final CODE_FAIL:I = -0x1

.field public static final CODE_FAIL_CTA:I = -0x2

.field public static final CODE_FAIL_THEMEMANAGER_LOW_VERSION:I = -0x3

.field public static final CODE_SUCCESS:I = 0x0

.field public static final EXTRA_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final EXTRA_ID:Ljava/lang/String; = "onlineId"

.field public static final EXTRA_PERCENT:Ljava/lang/String; = "percent"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_VER:Ljava/lang/String; = "version"

.field public static final STATE_DOWNLOAD:I = 0x0

.field public static final STATE_DOWNLOAD_PARSE:I = 0x1

.field public static final STATE_ERROR:I = 0x3

.field public static final STATE_ERROR_NO_LOGIN:I = 0x6

.field public static final STATE_PARSE_DONE:I = 0x2

.field public static final STATE_RIGHT_ERROR:I = 0x4

.field public static final STATE_RIGHT_SUCCESS:I = 0x5


# direct methods
.method public static final createDownloadStatus(Landroid/content/Intent;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;
    .locals 7

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    const-string v1, "onlineId"

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object v2, v1

    const/4 v1, 0x0

    const-string v3, "version"

    .line 38
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v1, -0x64

    const-string v4, "state"

    .line 39
    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "percent"

    .line 40
    invoke-virtual {p0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "errorMsg"

    .line 41
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-object v0
.end method

.method public static final extendIntent(Lcom/miui/maml/widget/edit/MamlDownloadStatus;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "$this$extendIntent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onlineId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getMamlVersion()I

    move-result v0

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result v0

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getProgressPercent()I

    move-result v0

    const-string v1, "percent"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getErrorMsg()Ljava/lang/String;

    move-result-object p0

    const-string v0, "errorMsg"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-void
.end method
