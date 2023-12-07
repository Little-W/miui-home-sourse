.class public interface abstract Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoscSplitScreenListener"
.end annotation


# virtual methods
.method public abstract onInitSoscSplitScreen()V
.end method

.method public abstract onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
.end method

.method public abstract onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
.end method

.method public abstract onStagePositionChanged(II)V
.end method

.method public abstract onTaskStageChanged(IIZ)V
.end method
