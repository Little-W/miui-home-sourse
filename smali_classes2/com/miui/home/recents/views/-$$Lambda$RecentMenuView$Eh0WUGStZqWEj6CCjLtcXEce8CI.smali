.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$Eh0WUGStZqWEj6CCjLtcXEce8CI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$Eh0WUGStZqWEj6CCjLtcXEce8CI;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$Eh0WUGStZqWEj6CCjLtcXEce8CI;->f$0:Z

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$updateMenuItemSmallWindowEnable$3(ZLjava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
