.class synthetic Lcom/miui/home/recents/NavStubView$23;
.super Ljava/lang/Object;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$home$recents$NavStubView$ModeGesture:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2337
    invoke-static {}, Lcom/miui/home/recents/NavStubView$ModeGesture;->values()[Lcom/miui/home/recents/NavStubView$ModeGesture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/home/recents/NavStubView$23;->$SwitchMap$com$miui$home$recents$NavStubView$ModeGesture:[I

    :try_start_0
    sget-object v0, Lcom/miui/home/recents/NavStubView$23;->$SwitchMap$com$miui$home$recents$NavStubView$ModeGesture:[I

    sget-object v1, Lcom/miui/home/recents/NavStubView$ModeGesture;->APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView$ModeGesture;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/home/recents/NavStubView$23;->$SwitchMap$com$miui$home$recents$NavStubView$ModeGesture:[I

    sget-object v1, Lcom/miui/home/recents/NavStubView$ModeGesture;->HOME_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView$ModeGesture;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
