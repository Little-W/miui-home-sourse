.class Lcom/miui/home/recents/FsGestureAssistEnableHelper$2;
.super Landroid/database/ContentObserver;
.source "FsGestureAssistEnableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/FsGestureAssistEnableHelper;->registerAssistObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/FsGestureAssistEnableHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/FsGestureAssistEnableHelper;Landroid/os/Handler;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper$2;->this$0:Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper$2;->this$0:Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    invoke-static {p0}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->access$000(Lcom/miui/home/recents/FsGestureAssistEnableHelper;)V

    return-void
.end method
