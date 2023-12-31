.class public Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;
.super Ljava/lang/Object;
.source "HardwareRendererExpose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/graphics/HardwareRendererExpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameDrawingCallbackExpose"
.end annotation


# static fields
.field public static final CLASS:Lcom/miui/expose/utils/ClassHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.graphics.HardwareRenderer$FrameDrawingCallback"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;
    .locals 1

    .line 21
    new-instance v0, Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;

    invoke-direct {v0, p0}, Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public unbox()Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;->instance:Ljava/lang/Object;

    return-object p0
.end method
