.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F

.field private final synthetic f$2:F

.field private final synthetic f$3:I

.field private final synthetic f$4:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;FFILcom/miui/home/recents/views/TaskView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$1:F

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$2:F

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$3:I

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$4:Lcom/miui/home/recents/views/TaskView;

    iput p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$5:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 10

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$1:F

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$2:F

    iget v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$3:I

    iget-object v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$4:Lcom/miui/home/recents/views/TaskView;

    iget v5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$--ePyqG2p3ih8NytYHb95sc_fkA;->f$5:F

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/miui/home/recents/NavStubView;->lambda$performAppToApp$36(Lcom/miui/home/recents/NavStubView;FFILcom/miui/home/recents/views/TaskView;FLandroid/graphics/RectF;FFF)V

    return-void
.end method
