.class Lmiuix/internal/log/format/SimpleFormatter$1;
.super Ljava/lang/ThreadLocal;
.source "SimpleFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/log/format/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/log/format/SimpleFormatter;


# direct methods
.method constructor <init>(Lmiuix/internal/log/format/SimpleFormatter;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lmiuix/internal/log/format/SimpleFormatter$1;->this$0:Lmiuix/internal/log/format/SimpleFormatter;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lmiuix/internal/log/format/SimpleFormatter$1;->initialValue()Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;

    move-result-object p0

    return-object p0
.end method

.method protected initialValue()Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;
    .locals 0

    .line 19
    new-instance p0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;

    invoke-direct {p0}, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;-><init>()V

    return-object p0
.end method
