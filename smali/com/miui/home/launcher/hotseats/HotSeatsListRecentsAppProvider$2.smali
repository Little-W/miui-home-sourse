.class Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;
.super Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;
.source "HotSeatsListRecentsAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChangedBackground()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-static {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->access$300(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    return-void
.end method
