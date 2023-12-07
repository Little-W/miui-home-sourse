.class Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;
.super Landroid/webkit/WebChromeClient;


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

    iput-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;->this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;->this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-static {p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->access$100(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;->this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-virtual {p1, p2}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;->this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-static {p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->access$100(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;->this$0:Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-static {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->access$200(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
