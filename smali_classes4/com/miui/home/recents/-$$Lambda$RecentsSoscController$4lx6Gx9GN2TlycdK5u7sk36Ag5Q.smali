.class public final synthetic Lcom/miui/home/recents/-$$Lambda$RecentsSoscController$4lx6Gx9GN2TlycdK5u7sk36Ag5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/RecentsSoscController;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/RecentsSoscController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscController$4lx6Gx9GN2TlycdK5u7sk36Ag5Q;->f$0:Lcom/miui/home/recents/RecentsSoscController;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscController$4lx6Gx9GN2TlycdK5u7sk36Ag5Q;->f$1:I

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscController$4lx6Gx9GN2TlycdK5u7sk36Ag5Q;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscController$4lx6Gx9GN2TlycdK5u7sk36Ag5Q;->f$0:Lcom/miui/home/recents/RecentsSoscController;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscController$4lx6Gx9GN2TlycdK5u7sk36Ag5Q;->f$1:I

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscController$4lx6Gx9GN2TlycdK5u7sk36Ag5Q;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/RecentsSoscController;->lambda$fromRecentsToHome$0$RecentsSoscController(II)V

    return-void
.end method
