.class public Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;
.super Lcom/market/sdk/utils/Connection$ResetableOutputStream;
.source "Connection.java"


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

    .line 528
    iput-object p1, p0, Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;->this$0:Lcom/market/sdk/utils/Connection;

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/market/sdk/utils/Connection$ResetableOutputStream;-><init>(Lcom/market/sdk/utils/Connection;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method
