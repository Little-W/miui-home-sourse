.class Lcom/miui/launcher/utils/MamlUtils$1;
.super Ljava/lang/Object;
.source "MamlUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/launcher/utils/MamlUtils;->changeToFancyDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fancyDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/miui/launcher/utils/MamlUtils$1;->val$fancyDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/miui/launcher/utils/MamlUtils$1;->val$icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/miui/launcher/utils/MamlUtils$1;->val$fancyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/miui/launcher/utils/MamlUtils$1;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
