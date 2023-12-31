.class public interface abstract Lcom/miui/home/launcher/AssistantWidget;
.super Ljava/lang/Object;
.source "AssistantWidget.java"


# virtual methods
.method public abstract checkAssistantVersion(Ljava/lang/String;)V
.end method

.method public abstract getPickerDetailActivity()Landroid/content/ComponentName;
.end method

.method public abstract getPickerHomeActivity()Landroid/content/ComponentName;
.end method

.method public abstract getPkgName()Ljava/lang/String;
.end method

.method public abstract getPriorityStrategy(Landroid/content/Context;)I
.end method

.method public abstract isAssistantCTAAgree(Landroid/content/Context;)Z
.end method

.method public isMinusScreen2x1Enabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract isSupportMIUIWidget(Landroid/content/Context;)Z
.end method
