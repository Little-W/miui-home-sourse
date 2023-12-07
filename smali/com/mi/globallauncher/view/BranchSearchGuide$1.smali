.class Lcom/mi/globallauncher/view/BranchSearchGuide$1;
.super Landroid/text/style/URLSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/BranchSearchGuide;->setTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$lightMode:Z

.field final synthetic val$tempUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V
    .locals 0

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$tempUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$activity:Landroid/app/Activity;

    iput-boolean p4, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$lightMode:Z

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$tempUrl:Ljava/lang/String;

    const-string v0, "http://url1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$lightMode:Z

    invoke-static {p1, v0, v1}, Lcom/mi/globallauncher/view/BranchSearchGuide;->access$000(Landroid/app/Activity;IZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$tempUrl:Ljava/lang/String;

    const-string v1, "http://url2"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$lightMode:Z

    invoke-static {p1, v0, v1}, Lcom/mi/globallauncher/view/BranchSearchGuide;->access$000(Landroid/app/Activity;IZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$tempUrl:Ljava/lang/String;

    const-string v1, "http://url3"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$lightMode:Z

    invoke-static {p1, v0, v1}, Lcom/mi/globallauncher/view/BranchSearchGuide;->access$000(Landroid/app/Activity;IZ)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$activity:Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$activity:Landroid/app/Activity;

    iget-boolean p0, p0, Lcom/mi/globallauncher/view/BranchSearchGuide$1;->val$lightMode:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/mi/globallauncher/R$color;->alpha70black:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/mi/globallauncher/R$color;->alpha70white:I

    :goto_0
    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
