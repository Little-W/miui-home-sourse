.class Lcom/miui/home/launcher/ShortcutInfo$1;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"

# interfaces
.implements Ljava/util/function/Function;


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
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutInfo;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iconCache:Lcom/miui/home/launcher/IconCache;

.field final synthetic val$src:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo$1;->this$0:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/ShortcutInfo$1;->val$iconCache:Lcom/miui/home/launcher/IconCache;

    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutInfo$1;->val$src:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 364
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo$1;->this$0:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo$1;->val$iconCache:Lcom/miui/home/launcher/IconCache;

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo$1;->val$src:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 361
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo$1;->apply(Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
