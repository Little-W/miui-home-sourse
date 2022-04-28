.class public final synthetic Lmiuix/appcompat/app/floatingactivity/multiapp/-$$Lambda$1Ek9IRpv5D4syR4YfsoyYt9G7qA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/-$$Lambda$1Ek9IRpv5D4syR4YfsoyYt9G7qA;->f$0:Lmiuix/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/-$$Lambda$1Ek9IRpv5D4syR4YfsoyYt9G7qA;->f$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->showFloatingBrightPanel()V

    return-void
.end method
