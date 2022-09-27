.class Lcom/miui/home/launcher/SuperDraglayer$3;
.super Landroid/view/View;
.source "SuperDraglayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SuperDraglayer;->highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SuperDraglayer;

.field final synthetic val$icon:Lcom/miui/home/launcher/ItemIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/content/Context;Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$3;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    iput-object p3, p0, Lcom/miui/home/launcher/SuperDraglayer$3;->val$icon:Lcom/miui/home/launcher/ItemIcon;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$3;->val$icon:Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ItemIcon;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
