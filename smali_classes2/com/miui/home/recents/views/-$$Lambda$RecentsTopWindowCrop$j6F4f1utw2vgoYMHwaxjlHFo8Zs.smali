.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$j6F4f1utw2vgoYMHwaxjlHFo8Zs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/RecentsTopWindowCrop;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$j6F4f1utw2vgoYMHwaxjlHFo8Zs;->f$0:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    iput p2, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$j6F4f1utw2vgoYMHwaxjlHFo8Zs;->f$1:F

    iput p3, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$j6F4f1utw2vgoYMHwaxjlHFo8Zs;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$j6F4f1utw2vgoYMHwaxjlHFo8Zs;->f$0:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    iget v1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$j6F4f1utw2vgoYMHwaxjlHFo8Zs;->f$1:F

    iget v2, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$j6F4f1utw2vgoYMHwaxjlHFo8Zs;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->lambda$updateState$1(Lcom/miui/home/recents/views/RecentsTopWindowCrop;FF)V

    return-void
.end method
