.class public final synthetic Lcom/miui/blur/sdk/backdrop/-$$Lambda$w7MvuGsBCRj6F1NL_WGofNt_LDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$w7MvuGsBCRj6F1NL_WGofNt_LDM;->f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$w7MvuGsBCRj6F1NL_WGofNt_LDM;->f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->recycle()V

    return-void
.end method
