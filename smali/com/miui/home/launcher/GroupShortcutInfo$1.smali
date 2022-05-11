.class Lcom/miui/home/launcher/GroupShortcutInfo$1;
.super Ljava/lang/Object;
.source "GroupShortcutInfo.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/GroupShortcutInfo;->getPairIconAsync(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IconCache;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
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
.field final synthetic this$0:Lcom/miui/home/launcher/GroupShortcutInfo;

.field final synthetic val$icon1:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/GroupShortcutInfo;Landroid/widget/ImageView;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/miui/home/launcher/GroupShortcutInfo$1;->this$0:Lcom/miui/home/launcher/GroupShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/GroupShortcutInfo$1;->val$icon1:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/GroupShortcutInfo$1;->this$0:Lcom/miui/home/launcher/GroupShortcutInfo;

    iput-object p1, v0, Lcom/miui/home/launcher/GroupShortcutInfo;->mIconDrawable1:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/GroupShortcutInfo$1;->val$icon1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/GroupShortcutInfo$1;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
