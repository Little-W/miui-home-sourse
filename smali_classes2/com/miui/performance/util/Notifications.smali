.class public final Lcom/miui/performance/util/Notifications;
.super Ljava/lang/Object;
.source "Notifications.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/performance/util/Notifications$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/performance/util/Notifications$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/performance/util/Notifications$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/performance/util/Notifications$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/performance/util/Notifications;->Companion:Lcom/miui/performance/util/Notifications$Companion;

    .line 17
    sget-object v0, Lcom/miui/performance/util/NotificationChannels;->Companion:Lcom/miui/performance/util/NotificationChannels$Companion;

    sget-object v1, Lcom/miui/performance/util/Notifications;->Companion:Lcom/miui/performance/util/Notifications$Companion;

    invoke-static {v1}, Lcom/miui/performance/util/Notifications$Companion;->access$getContext$p(Lcom/miui/performance/util/Notifications$Companion;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/performance/util/NotificationChannels$Companion;->createAll(Landroid/content/Context;)V

    return-void
.end method
