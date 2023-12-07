.class Lcom/miui/expose/utils/ParameterTypes$1;
.super Ljava/lang/Object;
.source "ParameterTypes.java"

# interfaces
.implements Lcom/miui/expose/utils/ParameterTypes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/expose/utils/ParameterTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private empty:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 5
    iput-object v0, p0, Lcom/miui/expose/utils/ParameterTypes$1;->empty:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public get()[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lcom/miui/expose/utils/ParameterTypes$1;->empty:[Ljava/lang/Class;

    return-object p0
.end method
