.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$NMb1XEKFK-ONgxPj0FGAi-gj450;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

.field private final synthetic f$1:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$NMb1XEKFK-ONgxPj0FGAi-gj450;->f$0:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$NMb1XEKFK-ONgxPj0FGAi-gj450;->f$1:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$NMb1XEKFK-ONgxPj0FGAi-gj450;->f$0:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$NMb1XEKFK-ONgxPj0FGAi-gj450;->f$1:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->lambda$resetAdapter$0$WidgetThumbnailView(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    return-void
.end method
