.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$hijYoRScuED9YDP7G4o-MNAzUyI;
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

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$hijYoRScuED9YDP7G4o-MNAzUyI;->f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$hijYoRScuED9YDP7G4o-MNAzUyI;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$hijYoRScuED9YDP7G4o-MNAzUyI;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$hijYoRScuED9YDP7G4o-MNAzUyI;->f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iget-object v1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$hijYoRScuED9YDP7G4o-MNAzUyI;->f$1:Landroid/view/View;

    iget p0, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$hijYoRScuED9YDP7G4o-MNAzUyI;->f$2:F

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->lambda$snapChild$1$SwipeHelperForRecents(Landroid/view/View;F)V

    return-void
.end method
