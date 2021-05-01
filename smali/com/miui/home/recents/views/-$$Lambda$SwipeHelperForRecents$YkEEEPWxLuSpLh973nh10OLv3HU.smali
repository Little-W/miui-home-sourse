.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$YkEEEPWxLuSpLh973nh10OLv3HU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$YkEEEPWxLuSpLh973nh10OLv3HU;->f$0:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$YkEEEPWxLuSpLh973nh10OLv3HU;->f$0:F

    check-cast p1, Lcom/miui/home/recents/util/InOutRangeDetector;

    invoke-static {v0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->lambda$onTouchEvent$308(FLcom/miui/home/recents/util/InOutRangeDetector;)V

    return-void
.end method
