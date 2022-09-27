.class public final Lcom/miui/performance/util/Notifications$Companion;
.super Ljava/lang/Object;
.source "Notifications.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/performance/util/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/miui/performance/util/Notifications$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/miui/performance/util/Notifications$Companion;)Landroid/content/Context;
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/miui/performance/util/Notifications$Companion;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 14
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0}, Lcom/miui/performance/PerformanceTools;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final alertLeak(I)V
    .locals 6

    .line 21
    move-object v0, p0

    check-cast v0, Lcom/miui/performance/util/Notifications$Companion;

    invoke-direct {v0}, Lcom/miui/performance/util/Notifications$Companion;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-lez p1, :cond_0

    .line 23
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v0}, Lcom/miui/performance/util/Notifications$Companion;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ALR"

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    sget v3, Lcom/miui/performance/R$drawable;->ic_memory:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 25
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 26
    invoke-direct {v0}, Lcom/miui/performance/util/Notifications$Companion;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/miui/performance/R$string;->memory_leak:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 27
    invoke-direct {v0}, Lcom/miui/performance/util/Notifications$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/miui/performance/R$string;->garbage_count:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 29
    sget v0, Lcom/miui/performance/R$drawable;->ic_memory:I

    invoke-virtual {v1, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 31
    :cond_0
    sget p1, Lcom/miui/performance/R$drawable;->ic_memory:I

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void
.end method
