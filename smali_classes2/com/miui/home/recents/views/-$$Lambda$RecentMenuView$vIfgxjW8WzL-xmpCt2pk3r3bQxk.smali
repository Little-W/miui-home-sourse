.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$vIfgxjW8WzL-xmpCt2pk3r3bQxk;
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

    iput-boolean p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$vIfgxjW8WzL-xmpCt2pk3r3bQxk;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$vIfgxjW8WzL-xmpCt2pk3r3bQxk;->f$0:Z

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$updateMenuItemSmallWindowEnable$5(ZLjava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
