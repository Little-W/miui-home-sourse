.class Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "CommercialWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/activity/CommercialWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;->this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;->this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-static {p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->access$100(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;->this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-virtual {p1, p2}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;->this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-static {p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->access$100(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;->this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-static {p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->access$200(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
