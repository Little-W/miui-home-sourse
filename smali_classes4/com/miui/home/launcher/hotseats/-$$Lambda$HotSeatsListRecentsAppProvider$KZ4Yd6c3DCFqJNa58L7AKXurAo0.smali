.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$KZ4Yd6c3DCFqJNa58L7AKXurAo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$KZ4Yd6c3DCFqJNa58L7AKXurAo0;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    iput-boolean p2, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$KZ4Yd6c3DCFqJNa58L7AKXurAo0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$KZ4Yd6c3DCFqJNa58L7AKXurAo0;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    iget-boolean p0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$KZ4Yd6c3DCFqJNa58L7AKXurAo0;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$handleUpdateRecommendTasks$1$HotSeatsListRecentsAppProvider(Z)V

    return-void
.end method
