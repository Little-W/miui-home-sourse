.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qQGHBDl-qMWwSf6_roIk9rwOgaE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qQGHBDl-qMWwSf6_roIk9rwOgaE;->f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qQGHBDl-qMWwSf6_roIk9rwOgaE;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qQGHBDl-qMWwSf6_roIk9rwOgaE;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qQGHBDl-qMWwSf6_roIk9rwOgaE;->f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iget-object v1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qQGHBDl-qMWwSf6_roIk9rwOgaE;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$qQGHBDl-qMWwSf6_roIk9rwOgaE;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->lambda$snapChild$307(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;F)V

    return-void
.end method
