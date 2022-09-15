.class public Lcom/market/sdk/utils/Connection$ConnectionException;
.super Ljava/lang/Exception;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/utils/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectionException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mError:Lcom/market/sdk/utils/Connection$NetworkError;

.field final synthetic this$0:Lcom/market/sdk/utils/Connection;


# direct methods
.method public constructor <init>(Lcom/market/sdk/utils/Connection;Lcom/market/sdk/utils/Connection$NetworkError;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/market/sdk/utils/Connection$ConnectionException;->this$0:Lcom/market/sdk/utils/Connection;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 484
    iput-object p2, p0, Lcom/market/sdk/utils/Connection$ConnectionException;->mError:Lcom/market/sdk/utils/Connection$NetworkError;

    return-void
.end method
