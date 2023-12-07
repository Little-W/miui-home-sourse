.class public final synthetic Lcom/android/systemui/shared/recents/system/-$$Lambda$TaskStackChangeListeners$U3bwTtT3LouUWihDCwyVPCBL3-k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$TaskStackChangeListeners$U3bwTtT3LouUWihDCwyVPCBL3-k;->f$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$TaskStackChangeListeners$U3bwTtT3LouUWihDCwyVPCBL3-k;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$TaskStackChangeListeners$U3bwTtT3LouUWihDCwyVPCBL3-k;->f$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$TaskStackChangeListeners$U3bwTtT3LouUWihDCwyVPCBL3-k;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->lambda$onTransact$1$TaskStackChangeListeners(Ljava/lang/Object;)V

    return-void
.end method
