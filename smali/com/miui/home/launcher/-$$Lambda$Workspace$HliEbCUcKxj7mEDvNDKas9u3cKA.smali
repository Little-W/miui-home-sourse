.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$HliEbCUcKxj7mEDvNDKas9u3cKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$HliEbCUcKxj7mEDvNDKas9u3cKA;->f$0:Lcom/miui/home/launcher/Workspace;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$HliEbCUcKxj7mEDvNDKas9u3cKA;->f$0:Lcom/miui/home/launcher/Workspace;

    check-cast p1, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$onDropFromExternal$2(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/gadget/Gadget;)Z

    move-result p1

    return p1
.end method
