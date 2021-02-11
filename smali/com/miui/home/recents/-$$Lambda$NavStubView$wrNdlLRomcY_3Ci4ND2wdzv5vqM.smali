.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$wrNdlLRomcY_3Ci4ND2wdzv5vqM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/recents/views/TaskStackView;

.field private final synthetic f$2:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wrNdlLRomcY_3Ci4ND2wdzv5vqM;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wrNdlLRomcY_3Ci4ND2wdzv5vqM;->f$1:Lcom/miui/home/recents/views/TaskStackView;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wrNdlLRomcY_3Ci4ND2wdzv5vqM;->f$2:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wrNdlLRomcY_3Ci4ND2wdzv5vqM;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wrNdlLRomcY_3Ci4ND2wdzv5vqM;->f$1:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wrNdlLRomcY_3Ci4ND2wdzv5vqM;->f$2:Lcom/miui/home/recents/views/TaskView;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/NavStubView;->lambda$performAppToRecents$3(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;FFF)V

    return-void
.end method
