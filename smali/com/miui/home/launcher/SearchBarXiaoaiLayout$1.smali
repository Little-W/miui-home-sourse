.class Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "SearchBarXiaoaiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->refreshStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/AsyncTaskRunnable<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->access$002(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;Z)Z

    .line 95
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->access$000(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SearchBarStyleUtil"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawableXiaoai="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/SearchBarStyleData;->getRightIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->doInBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->access$100(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
