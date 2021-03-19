.class public final synthetic Lcom/miui/home/recents/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$x2jas03n6V6lRAIc-zCiYGIcCOs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$x2jas03n6V6lRAIc-zCiYGIcCOs;->f$0:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$x2jas03n6V6lRAIc-zCiYGIcCOs;->f$0:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;

    check-cast p1, Lcom/miui/home/launcher/BaseActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->lambda$x2jas03n6V6lRAIc-zCiYGIcCOs(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
