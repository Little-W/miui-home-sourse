.class public final Lcom/miui/maml/widget/edit/MamlDownloadStatusKt;
.super Ljava/lang/Object;
.source "MamlDownloadStatus.kt"


# static fields
.field public static final CODE_EXIST:I = 0x1

.field public static final CODE_FAIL:I = -0x1

.field public static final CODE_FAIL_CTA:I = -0x2

.field public static final CODE_SUCCESS:I = 0x0

.field public static final EXTRA_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final EXTRA_ID:Ljava/lang/String; = "onlineId"

.field public static final EXTRA_PERCENT:Ljava/lang/String; = "percent"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_VER:Ljava/lang/String; = "version"

.field public static final STATE_DOWNLOAD:I = 0x0

.field public static final STATE_DOWNLOAD_PARSE:I = 0x1

.field public static final STATE_ERROR:I = 0x3

.field public static final STATE_PARSE_DONE:I = 0x2


# direct methods
.method public static final createDownloadStatus(Landroid/content/Intent;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;
    .locals 7

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    const-string v1, "onlineId"

    .line 33
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object v2, v1

    const-string v1, "version"

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v1, "state"

    const/16 v4, -0x64

    .line 35
    invoke-virtual {p0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "percent"

    .line 36
    invoke-virtual {p0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "errorMsg"

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v1, v0

    move v4, v5

    move v5, v6

    move-object v6, p0

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-object v0
.end method

.method public static final extendIntent(Lcom/miui/maml/widget/edit/MamlDownloadStatus;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "$this$extendIntent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onlineId"

    .line 42
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "version"

    .line 43
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getMamlVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "state"

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "percent"

    .line 45
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getProgressPercent()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
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

    const-string v0, "errorMsg"

    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getErrorMsg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-void
.end method
