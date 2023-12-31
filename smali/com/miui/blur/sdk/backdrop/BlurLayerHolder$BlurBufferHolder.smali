.class Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;
.super Ljava/lang/Object;
.source "BlurLayerHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlurBufferHolder"
.end annotation


# instance fields
.field private final mBlurred:Landroid/graphics/Bitmap;

.field private final mBufferHeight:I

.field private final mBufferWidth:I

.field private final mInput:Landroid/renderscript/Allocation;

.field private final mOutput:Landroid/renderscript/Allocation;

.field private final mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

.field private final mShader:Landroid/graphics/BitmapShader;


# direct methods
.method constructor <init>(IILandroid/renderscript/RenderScript;Landroid/renderscript/ScriptIntrinsicBlur;)V
    .locals 1

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferWidth:I

    .line 306
    iput p2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferHeight:I

    .line 307
    iput-object p4, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 309
    new-instance p4, Landroid/renderscript/Type$Builder;

    invoke-static {p3}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-direct {p4, p3, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 310
    invoke-virtual {p4, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object p1

    .line 311
    invoke-virtual {p1, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p1

    const/16 p2, 0x23

    .line 314
    invoke-static {p3, p1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mInput:Landroid/renderscript/Allocation;

    const/4 p2, 0x1

    .line 315
    invoke-static {p3, p1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mOutput:Landroid/renderscript/Allocation;

    .line 316
    iget p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferWidth:I

    iget p2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferHeight:I

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBlurred:Landroid/graphics/Bitmap;

    .line 317
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBlurred:Landroid/graphics/Bitmap;

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object p4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, p3, p4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mShader:Landroid/graphics/BitmapShader;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I
    .locals 0

    .line 293
    iget p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I
    .locals 0

    .line 293
    iget p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)Landroid/graphics/BitmapShader;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method


# virtual methods
.method attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 322
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {p0}, Landroid/renderscript/Allocation;->ioReceive()V

    return-void
.end method

.method processBlur()V
    .locals 2

    const-string v0, "processBlur"

    .line 326
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 328
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 329
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mOutput:Landroid/renderscript/Allocation;

    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBlurred:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 330
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method recycle()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 335
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 336
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBlurred:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
