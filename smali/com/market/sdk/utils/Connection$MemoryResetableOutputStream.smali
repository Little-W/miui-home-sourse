.class public Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;
.super Lcom/market/sdk/utils/Connection$ResetableOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/utils/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MemoryResetableOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/utils/Connection;


# direct methods
.method public constructor <init>(Lcom/market/sdk/utils/Connection;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;->this$0:Lcom/market/sdk/utils/Connection;

    invoke-direct {p0, p1, p2}, Lcom/market/sdk/utils/Connection$ResetableOutputStream;-><init>(Lcom/market/sdk/utils/Connection;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method
