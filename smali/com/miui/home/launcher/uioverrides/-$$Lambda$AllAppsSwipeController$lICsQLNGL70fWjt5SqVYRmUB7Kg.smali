.class public final synthetic Lcom/miui/home/launcher/uioverrides/-$$Lambda$AllAppsSwipeController$lICsQLNGL70fWjt5SqVYRmUB7Kg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;

.field private final synthetic f$1:Lcom/miui/home/launcher/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/-$$Lambda$AllAppsSwipeController$lICsQLNGL70fWjt5SqVYRmUB7Kg;->f$0:Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;

    iput-object p2, p0, Lcom/miui/home/launcher/uioverrides/-$$Lambda$AllAppsSwipeController$lICsQLNGL70fWjt5SqVYRmUB7Kg;->f$1:Lcom/miui/home/launcher/LauncherState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/-$$Lambda$AllAppsSwipeController$lICsQLNGL70fWjt5SqVYRmUB7Kg;->f$0:Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;

    iget-object v1, p0, Lcom/miui/home/launcher/uioverrides/-$$Lambda$AllAppsSwipeController$lICsQLNGL70fWjt5SqVYRmUB7Kg;->f$1:Lcom/miui/home/launcher/LauncherState;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->lambda$onDragEnd$346(Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method
