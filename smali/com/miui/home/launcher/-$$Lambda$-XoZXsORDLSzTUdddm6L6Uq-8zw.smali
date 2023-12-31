.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$-XoZXsORDLSzTUdddm6L6Uq-8zw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/SearchBarContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/SearchBarContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$-XoZXsORDLSzTUdddm6L6Uq-8zw;->f$0:Lcom/miui/home/launcher/SearchBarContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$-XoZXsORDLSzTUdddm6L6Uq-8zw;->f$0:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->trackShow()V

    return-void
.end method
