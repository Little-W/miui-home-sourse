.class Lcom/miui/home/launcher/SearchBarLeftIconLayout$1;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "SearchBarLeftIconLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SearchBarLeftIconLayout;->refreshStyle()V
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
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarLeftIconLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SearchBarLeftIconLayout;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarLeftIconLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarLeftIconLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawableLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchBarStyleUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarLeftIconLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-static {p0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->access$000(Lcom/miui/home/launcher/SearchBarLeftIconLayout;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/SearchBarStyleData;->getLeftIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout$1;->doInBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarLeftIconLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-static {p0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->access$100(Lcom/miui/home/launcher/SearchBarLeftIconLayout;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarLeftIconLayout$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
