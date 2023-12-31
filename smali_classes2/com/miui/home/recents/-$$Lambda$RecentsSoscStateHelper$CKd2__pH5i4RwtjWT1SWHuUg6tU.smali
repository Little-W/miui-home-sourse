.class public final synthetic Lcom/miui/home/recents/-$$Lambda$RecentsSoscStateHelper$CKd2__pH5i4RwtjWT1SWHuUg6tU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/RecentsSoscStateHelper;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/RecentsSoscStateHelper;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscStateHelper$CKd2__pH5i4RwtjWT1SWHuUg6tU;->f$0:Lcom/miui/home/recents/RecentsSoscStateHelper;

    iput-boolean p2, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscStateHelper$CKd2__pH5i4RwtjWT1SWHuUg6tU;->f$1:Z

    iput-boolean p3, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscStateHelper$CKd2__pH5i4RwtjWT1SWHuUg6tU;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscStateHelper$CKd2__pH5i4RwtjWT1SWHuUg6tU;->f$0:Lcom/miui/home/recents/RecentsSoscStateHelper;

    iget-boolean v1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscStateHelper$CKd2__pH5i4RwtjWT1SWHuUg6tU;->f$1:Z

    iget-boolean p0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsSoscStateHelper$CKd2__pH5i4RwtjWT1SWHuUg6tU;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->lambda$onRecentsVisibleBoundChanged$0$RecentsSoscStateHelper(ZZ)V

    return-void
.end method
