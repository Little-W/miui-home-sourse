.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$i8u_l9-jAoI9VzBzQYr9gZtbWbE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$i8u_l9-jAoI9VzBzQYr9gZtbWbE;->f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$i8u_l9-jAoI9VzBzQYr9gZtbWbE;->f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    check-cast p1, Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->lambda$startTaskViewTouchMoveOrUpAnim$5$SpringAnimationUtils(Lcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method
