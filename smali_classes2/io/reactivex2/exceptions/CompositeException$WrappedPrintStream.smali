.class final Lio/reactivex2/exceptions/CompositeException$WrappedPrintStream;
.super Lio/reactivex2/exceptions/CompositeException$PrintStreamOrWriter;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrappedPrintStream"
.end annotation


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lio/reactivex2/exceptions/CompositeException$PrintStreamOrWriter;-><init>()V

    .line 217
    iput-object p1, p0, Lio/reactivex2/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method println(Ljava/lang/Object;)V
    .locals 0

    .line 222
    iget-object p0, p0, Lio/reactivex2/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
