.class Lcom/miui/home/launcher/common/Utilities$1;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:I

.field final synthetic val$textResId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1270
    iput-object p1, p0, Lcom/miui/home/launcher/common/Utilities$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/miui/home/launcher/common/Utilities$1;->val$textResId:I

    iput p3, p0, Lcom/miui/home/launcher/common/Utilities$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1274
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1278
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 1279
    iget-object v1, p0, Lcom/miui/home/launcher/common/Utilities$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p0, p0, Lcom/miui/home/launcher/common/Utilities$1;->val$textResId:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1275
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/Utilities$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/common/Utilities$1;->val$textResId:I

    iget p0, p0, Lcom/miui/home/launcher/common/Utilities$1;->val$duration:I

    invoke-static {v0, v1, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1276
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1281
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
