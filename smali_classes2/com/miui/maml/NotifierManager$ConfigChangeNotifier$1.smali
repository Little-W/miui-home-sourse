.class Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;
.super Ljava/lang/Object;
.source "NotifierManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;


# direct methods
.method constructor <init>(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;

    invoke-static {v0}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->access$500(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;)Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;

    invoke-static {v0}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->access$500(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;

    .line 586
    invoke-static {v0}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->access$500(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;

    .line 587
    invoke-static {v0}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->access$500(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;

    .line 588
    invoke-static {v0}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->access$500(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_2

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;

    invoke-static {v0, p1}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->access$600(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;Landroid/content/res/Configuration;)V

    .line 592
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;

    invoke-static {p0}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->access$500(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;)Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method
