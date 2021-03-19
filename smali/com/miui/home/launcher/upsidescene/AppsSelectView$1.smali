.class Lcom/miui/home/launcher/upsidescene/AppsSelectView$1;
.super Ljava/lang/Object;
.source "AppsSelectView.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/AppsSelectView;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

.field final synthetic val$label:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/AppsSelectView;Landroid/widget/TextView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$1;->this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$1;->val$label:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$1;->val$label:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/AppsSelectView$1;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
