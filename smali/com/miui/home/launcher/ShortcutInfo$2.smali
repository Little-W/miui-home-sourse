.class Lcom/miui/home/launcher/ShortcutInfo$2;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V
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
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutInfo;

.field final synthetic val$callback:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/function/Consumer;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo$2;->this$0:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo$2;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo$2;->this$0:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo$2;->val$callback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 358
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo$2;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
